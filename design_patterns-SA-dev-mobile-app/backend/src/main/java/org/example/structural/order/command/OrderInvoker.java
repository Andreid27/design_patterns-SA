package org.example.structural.order.command;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.util.ArrayDeque;
import java.util.Deque;

@Slf4j
@Component
public class OrderInvoker {

    private final Deque<OrderCommand> commandHistory = new ArrayDeque<>();

    public void executeCommand(OrderCommand command) {
        command.execute();
        commandHistory.push(command);
        log.debug("Command executed and added to history");
    }

    public void undoLastCommand() {
        if (!commandHistory.isEmpty()) {
            OrderCommand command = commandHistory.pop();
            command.undo();
            log.debug("Last command undone");
        } else {
            log.warn("No commands to undo");
        }
    }

    public int getHistorySize() {
        return commandHistory.size();
    }
}
