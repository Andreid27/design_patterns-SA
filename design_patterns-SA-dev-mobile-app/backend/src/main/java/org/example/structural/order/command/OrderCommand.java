package org.example.structural.order.command;

public interface OrderCommand {
    void execute();
    void undo();
}
