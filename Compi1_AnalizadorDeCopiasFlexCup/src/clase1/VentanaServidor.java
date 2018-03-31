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
import java.awt.Point;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import javax.swing.Box;
import javax.swing.*;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;
import javax.swing.text.BadLocationException;
import javax.swing.text.Element;

/**
 *
 * @author Hellen
 */
public class VentanaServidor  {

    public static void main(String[] args) throws BadLocationException {
        JLabel no_linea = new JLabel();
        JLabel no_columna = new JLabel();
        JTextArea area1 = new JTextArea(30, 85);
        JTextArea lines = new JTextArea("1");
        JTextField tfield = new JTextField(10);

        area1.getCaretPosition();

        if (area1.getCaretPosition() < area1.getDocument().getLength()) {
            char ch = area1.getText(area1.getCaretPosition(), 1).charAt(0);
            System.out.println(ch);
        }

        //************CODIGO PARA EL NO. DE LINEAS EN UN JTEXTAREA****************
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
        
        //***************VIENDO LA POSICION DEL CURSOR*******************************
        tfield.addActionListener(new ActionListener()
        {
            public void actionPerformed(ActionEvent ae)
            {
                area1.append(tfield.getText() + "\n");
            }
        });
        
        area1.addMouseListener(new MouseAdapter()
        {
            public void 	mouseReleased(MouseEvent me)
            {
                int x = me.getX();
                int y = me.getY();
                
                String x1 = Integer.toString(x);
                String y1 = Integer.toString(y);
                //Agregando valores a los labels
                no_linea.setText(y1);
                no_columna.setText(x1);
             //   System.out.println("X : " + x);
             //   System.out.println("Y : " + y);
                int startOffset = area1.viewToModel(new Point(x, y));
                String text = area1.getText();
                int searchLocation = text.indexOf("student://", startOffset);

            }
        });

        //***************AGREGANDO COMPONENTES***************************
        
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
        JLabel bt3 = new JLabel("Columna:");
        JLabel bt4 = new JLabel("4");
        panelInferior.add(bt1);
        panelInferior.add(no_linea);
        panelInferior.add(bt3);
        panelInferior.add(no_columna);

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
