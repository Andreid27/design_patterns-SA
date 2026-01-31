package org.example.structural.service.decorator;

public class BestsellerBookDecorator extends AbstractBookDecorator {

    private static final double BESTSELLER_PREMIUM = 0.10;

    public BestsellerBookDecorator(BookComponent wrappedBook) {
        super(wrappedBook);
    }

    @Override
    public String getDescription() {
        return wrappedBook.getDescription() + " [BESTSELLER]";
    }

    @Override
    public double getPrice() {
        double originalPrice = wrappedBook.getPrice();
        return Math.round((originalPrice * (1 + BESTSELLER_PREMIUM)) * 100.0) / 100.0;
    }
}
