package org.example.creational;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

import static org.junit.jupiter.api.Assertions.*;

@DisplayName("DocumentEditor Main Tests")
class DocumentEditorMainTest {

    private ByteArrayOutputStream outputStream;

    @BeforeEach
    void setUp() {
        outputStream = new ByteArrayOutputStream();
        System.setOut(new PrintStream(outputStream));
    }

    @Test
    @DisplayName("Should run main method and demonstrate all document types")
    void shouldRunMainAndDemonstrateAllDocumentTypes() {
        DocumentEditor.main(new String[]{});

        String output = outputStream.toString();

        assertTrue(output.contains("Working with PDF Document"));
        assertTrue(output.contains("Opening PDF document"));
        assertTrue(output.contains("Saving PDF document"));

        assertTrue(output.contains("Working with Word Document"));
        assertTrue(output.contains("Opening Word document"));
        assertTrue(output.contains("Saving Word document"));

        assertTrue(output.contains("Working with HTML Document"));
        assertTrue(output.contains("Opening HTML document"));
        assertTrue(output.contains("Saving HTML document"));
    }
}
