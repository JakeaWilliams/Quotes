import SwiftUI

struct Quote {
    let text: String
    let author: String
}

struct ContentView: View {
    @State private var currentQuoteIndex = 0
    
    private let quotes = [
        Quote(text: "The only way to do great work is to love what you do.", author: "Steve Jobs"),
        Quote(text: "Success is not the key to happiness. Happiness is the key to success.", author: "Albert Schweitzer"),
        Quote(text: "Don't be afraid to give up the good to go for the great.", author: "John D. Rockefeller"),
        Quote(text: "I find that the harder I work, the more luck I seem to have.", author: "Thomas Jefferson"),
        Quote(text: "Success usually comes to those who are too busy to be looking for it.", author: "Henry David Thoreau"),
        Quote(text: "The secret to success is to know something nobody else knows.", author: "Aristotle Onassis"),
        Quote(text: "Your time is limited, don't waste it living someone else's life.", author: "Steve Jobs"),
        Quote(text: "Believe you can and you're halfway there.", author: "Theodore Roosevelt"),
        Quote(text: "Don't watch the clock; do what it does. Keep going.", author: "Sam Levenson"),
        Quote(text: "The future belongs to those who believe in the beauty of their dreams.", author: "Eleanor Roosevelt"),
        Quote(text: "Success is not final, failure is not fatal: It is the courage to continue that counts.", author: "Winston Churchill"),
        Quote(text: "Success is walking from failure to failure with no loss of enthusiasm.", author: "Winston Churchill"),
        Quote(text: "Success is not the absence of failure; it's the persistence through failure.", author: "Aisha Tyler"),
        Quote(text: "Don't be pushed around by the fears in your mind. Be led by the dreams in your heart.", author: "Roy T. Bennett"),
        Quote(text: "The only limit to our realization of tomorrow will be our doubts of today.", author: "Franklin D. Roosevelt"),
        Quote(text: "The road to success and the road to failure are almost exactly the same.", author: "Colin R. Davis"),
        Quote(text: "Opportunities don't happen. You create them.", author: "Chris Grosser"),
        Quote(text: "You miss 100% of the shots you don't take.", author: "Wayne Gretzky"),
        Quote(text: "The harder you work for something, the greater you'll feel when you achieve it.", author: "Anonymous"),
        Quote(text: "Success is not in what you have, but who you are.", author: "Bo Bennett"),
        Quote(text: "The best way to predict your future is to create it.", author: "Peter Drucker"),
        Quote(text: "Your time is limited, don't waste it living someone else's life.", author: "Steve Jobs"),
           Quote(text: "Believe you can and you're halfway there.", author: "Theodore Roosevelt"),
           Quote(text: "Don't watch the clock; do what it does. Keep going.", author: "Sam Levenson"),
           Quote(text: "The future belongs to those who believe in the beauty of their dreams.", author: "Eleanor Roosevelt"),
           Quote(text: "Success is not final, failure is not fatal: It is the courage to continue that counts.", author: "Winston Churchill"),
           Quote(text: "Success is walking from failure to failure with no loss of enthusiasm.", author: "Winston Churchill"),
           Quote(text: "Success is not the absence of failure; it's the persistence through failure.", author: "Aisha Tyler"),
           Quote(text: "Don't be pushed around by the fears in your mind. Be led by the dreams in your heart.", author: "Roy T. Bennett"),
           Quote(text: "The only limit to our realization of tomorrow will be our doubts of today.", author: "Franklin D. Roosevelt"),
           Quote(text: "The road to success and the road to failure are almost exactly the same.", author: "Colin R. Davis"),
           Quote(text: "Opportunities don't happen. You create them.", author: "Chris Grosser"),
           Quote(text: "You miss 100% of the shots you don't take.", author: "Wayne Gretzky"),
           Quote(text: "The harder you work for something, the greater you'll feel when you achieve it.", author: "Anonymous"),
           Quote(text: "Success is not in what you have, but who you are.", author: "Bo Bennett"),
           Quote(text: "The best way to predict your future is to create it.", author: "Peter Drucker"),
           Quote(text: "Success is not the key to happiness. Happiness is the key to success.", author: "Albert Schweitzer"),
           Quote(text: "The biggest risk is not taking any risk. In a world that is changing quickly, the only strategy that is guaranteed to fail is not taking risks.", author: "Mark Zuckerberg"),
           Quote(text: "Your work is going to fill a large part of your life, and the only way to be truly satisfied is to do what you believe is great work. And the only way to do great work is to love what you do.", author: "Steve Jobs"),
           Quote(text: "Success usually comes to those who are too busy to be looking for it.", author: "Henry David Thoreau"),
           Quote(text: "Don't be afraid to give up the good to go for the great.", author: "John D. Rockefeller"),
           Quote(text: "The only place where success comes before work is in the dictionary.", author: "Vidal Sassoon"),
           Quote(text: "I find that the harder I work, the more luck I seem to have.", author: "Thomas Jefferson"),
           Quote(text: "Success is not the key to happiness. Happiness is the key to success.", author: "Albert Schweitzer"),
           Quote(text: "Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful.", author: "Albert Schweitzer"),
           Quote(text: "Don't be afraid to give up the good to go for the great.", author: "John D. Rockefeller"),
        Quote(text: "You are never too old to set another goal or to dream a new dream.", author: "C.S. Lewis"),
        Quote(text: "You yourself, as much as anybody in the entire universe, deserve your love and affection.", author: "Buddha"),
        Quote(text: "The only way to do great work is to love what you do.", author: "Steve Jobs"),
        Quote(text: "Believe you can and you're halfway there.", author: "Theodore Roosevelt"),
        Quote(text: "The best way to predict the future is to create it.", author: "Peter Drucker"),
        Quote(text: "You have within you right now, everything you need to deal with whatever the world can throw at you.", author: "Brian Tracy"),
        Quote(text: "Your life does not get better by chance, it gets better by change.", author: "Jim Rohn"),
        Quote(text: "You don't have to see the whole staircase, just take the first step.", author: "Martin Luther King Jr."),
        Quote(text: "The only person you are destined to become is the person you decide to be.", author: "Ralph Waldo Emerson"),
        Quote(text: "You are never too old to set another goal or to dream a new dream.", author: "C.S. Lewis"),
        Quote(text: "You yourself, as much as anybody in the entire universe, deserve your love and affection.", author: "Buddha"),
        Quote(text: "The only way to do great work is to love what you do.", author: "Steve Jobs"),
        Quote(text: "Believe you can and you're halfway there.", author: "Theodore Roosevelt"),
        Quote(text: "The best way to predict the future is to create it.", author: "Peter Drucker"),
        Quote(text: "You have within you right now, everything you need to deal with whatever the world can throw at you.", author: "Brian Tracy"),
        Quote(text: "Your life does not get better by chance, it gets better by change.", author: "Jim Rohn"),
        Quote(text: "You don't have to see the whole staircase, just take the first step.", author: "Martin Luther King Jr."),
        Quote(text: "The only person you are destined to become is the person you decide to be.", author: "Ralph Waldo Emerson"),
        Quote(text: "You are never too old to set another goal or to dream a new dream.", author: "C.S. Lewis"),
        Quote(text: "You yourself, as much as anybody in the entire universe, deserve your love and affection.", author: "Buddha")
        // Add more quotes here...
    ]
    
    @State private var isShareSheetShowing = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 10) {
                    VStack {
                        Text(quotes[currentQuoteIndex].text)
                            .font(.title)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        Text("- \(quotes[currentQuoteIndex].author)")
                            .font(.caption)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame(width: 350, height: 600)
                    .background(Color.black)
                    .cornerRadius(16)
                    
                    Spacer()
                    
                    HStack(spacing: 20) {
                        Button(action: {
                            previousQuote()
                        }) {
                            Text("Back")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 40)
                                .background(Color.black)
                                .cornerRadius(18)
                        }
                        
                        Button(action: {
                            nextQuote()
                        }) {
                            Text("Next")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 40)
                                .background(Color.black)
                                .cornerRadius(18)
                        }
                    }
                    .padding(.horizontal, 30)
                    
                    Button(action: {
                        isShareSheetShowing = true
                    }) {
                        Text("Share")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 40)
                            .background(Color.black)
                            .cornerRadius(18)
                    }
                    .padding(.horizontal, 30)
                }
                .padding(.vertical, 30)
            }
            .sheet(isPresented: $isShareSheetShowing, content: {
                if let cardImage = captureCardImage() {
                    ActivityViewController(activityItems: [cardImage], applicationActivities: nil)
                }
            })
        }
    }
    
    private func nextQuote() {
        currentQuoteIndex = (currentQuoteIndex + 1) % quotes.count
    }
    
    private func previousQuote() {
        currentQuoteIndex = (currentQuoteIndex - 1 + quotes.count) % quotes.count
    }
    
    private func captureCardImage() -> UIImage? {
        let cardView = ZStack {
            Color.black
            VStack {
                Text(quotes[currentQuoteIndex].text)
                    .font(.title)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text("- \(quotes[currentQuoteIndex].author)")
                    .font(.caption)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
            }
        }
        let controller = UIHostingController(rootView: cardView)
        let view = controller.view
        
        guard let unwrappedView = view else {
            return nil
        }
        
        let renderer = UIGraphicsImageRenderer(size: unwrappedView.bounds.size)
        let image = renderer.image { _ in
            unwrappedView.drawHierarchy(in: unwrappedView.bounds, afterScreenUpdates: true)
        }
        
        return image
    }
}

struct ActivityViewController: UIViewControllerRepresentable {
    var activityItems: [Any]
    var applicationActivities: [UIActivity]?

    func makeUIViewController(context: Context) -> UIActivityViewController {
        let controller = UIActivityViewController(activityItems: activityItems, applicationActivities: applicationActivities)
        return controller
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


