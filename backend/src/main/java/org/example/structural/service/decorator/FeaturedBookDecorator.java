package org.example.structural.service.decorator;

public class FeaturedBookDecorator extends AbstractBookDecorator {

    private static final double FEATURED_DISCOUNT = 0.05;

    public FeaturedBookDecorator(BookComponent wrappedBook) {
        super(wrappedBook);
    }

    @Override
    public String getDescription() {
        return wrappedBook.getDescription() + " [FEATURED]";
    }

    @Override
    public double getPrice() {
        double originalPrice = wrappedBook.getPrice();
        return Math.round((originalPrice * (1 - FEATURED_DISCOUNT)) * 100.0) / 100.0;
    }
}
