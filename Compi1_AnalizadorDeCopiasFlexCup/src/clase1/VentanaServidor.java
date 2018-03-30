/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clase1;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import javax.swing.Box;
import javax.swing.*;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;
import javax.swing.text.Element;

/**
 *
 * @author Hellen
 */
public class VentanaServidor {

    public static void main(String[] args) {
        JTextArea area1 = new JTextArea(30, 85);
        JTextArea lines = new JTextArea("1");

        JScrollPane jsp = new JScrollPane();
        lines.setBackground(Color.cyan);
        lines.setEditable(false);

        area1.getDocument().addDocumentListener(new DocumentListener() {
            public String getText() {
                int caretPosition = area1.getDocument().getLength();
                Element root = area1.getDocument().getDefaultRootElement();
                String text = "1" + System.getProperty("line.separator");
                for (int i = 2; i < root.getElementIndex(caretPosition) + 2; i++) {
                    text += i + System.getProperty("line.separator");
                }
                return text;
            }

            @Override
            public void changedUpdate(DocumentEvent de) {
                lines.setText(getText());
            }

            @Override
            public void insertUpdate(DocumentEvent de) {
                lines.setText(getText());
            }

            @Override
            public void removeUpdate(DocumentEvent de) {
                lines.setText(getText());
            }

        });

        jsp.getViewport().add(area1);
        jsp.setRowHeaderView(lines);
        jsp.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);
        
        JPanel chatPanel = new JPanel(new BorderLayout());
        chatPanel.add(new JLabel("Area de Notificaciones:", SwingConstants.LEFT), BorderLayout.PAGE_START);
        chatPanel.add(jsp);

        JPanel youLabelPanel = new JPanel(new FlowLayout(FlowLayout.LEFT, 0, 0));
        youLabelPanel.add(new JLabel("Linea:"));

        JPanel panelInferior = new JPanel();
        panelInferior.setLayout(new GridLayout(2, 2, 2, 2));
        JLabel bt1 = new JLabel("Linea:");
        JLabel bt2 = new JLabel("2");
        JLabel bt3 = new JLabel("Columna:");
        JLabel bt4 = new JLabel("4");
        panelInferior.add(bt1);
        panelInferior.add(bt2);
        panelInferior.add(bt3);
        panelInferior.add(bt4);

        JPanel mainPanel = new JPanel();
        mainPanel.setLayout(new BoxLayout(mainPanel, BoxLayout.PAGE_AXIS));
        mainPanel.add(chatPanel);
        mainPanel.add(Box.createVerticalStrut(10));
        mainPanel.add(panelInferior);

        JFrame frame = new JFrame("Servidor de Analisis");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.add(mainPanel);
        frame.pack();
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
    }
}
