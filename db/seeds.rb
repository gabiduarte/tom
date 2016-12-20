# This file should contain all the record creation needed to seed
# the database with its default values.
# The data can then be loaded with the rails db:seed command
# (or created alongside the database with db:setup).
#
# Examples:
#
#   movies =
#   Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
Trend.create([
  { name: 'Segments of One', description: 'The ability to track and understand individual customer behavior and customize products and services to the individual customer.' },
  { name: 'Artificial Intelligence', description: 'Computers performing tasks that normally require human intelligence: visual perception, decision-making, speech recognition and translation.' },
  { name: 'Voice-Controlled Everything', description: 'The ability to perform tasks using vocal commands instead of physical input (typing, clicking).' },
  { name: 'Augmented Reality / Virtual Reality', description: 'Live view of a real-world environment with elements augmented or supplemented by computer-generated sound, video, graphics or GPS data.' },
  { name: 'Wearables / Wearable Tech', description: 'Technology devices that can be worn by a consumer and often include tracking information related to health and fitness.' },
  { name: 'IoT', description: 'Items connected to the Internet and to each other i.e. cellphones, appliances, lamps, security systems, wearables and consumable products.' },
  { name: 'Seamless Commerce', description: 'Allows customers to purchase and receive goods and services where, when and how they want to, with or without cash, cards or devices.' },
  { name: 'Contextual Customer Understanding', description: 'Understanding and engaging customers as individuals - beyond what, where and how much they buy - it emphasizes a customer’s purpose for buying.' },
  { name: 'Product Insight', description: 'Deeper understanding of a product’s unique information and attributes to help you understand and predict the success or failure of an item.' },
  { name: 'Clienteling', description: 'A technique used by retail associates to nurture relationships with customers based on data about their preferences, behaviors and purchases.' },
  { name: 'No-Points / No-Discounts Loyalty', description: 'Loyalty programs that incentivize and reward customer behavior with access to goods, services, experiences or other values-based offerings.' },
  { name: 'Click & Collect / BOPIS', description: 'A shopping concept whereby a customer can buy or order goods from a store\'s website and collect them from a nearby pickup location.' },
  { name: 'Death of Apps', description: 'Stagnation in the app market; only 12% of apps are actively used. BUT, Apple’s App Store generated $70B USD. Are apps dead?' },
  { name: 'Virtual Assistant and ChatBots', description: 'Software that simulates live conversation to automate tasks such as customer service inquiries, ordering, getting info. May live inside Facebook messenger.' },
  { name: 'The Rise of Platforms', description: 'Platforms as a Service that improve IT delivery efficiency, unlock business innovation. Also, businesses that are a platform and participate in an API ecosystem.' },
  { name: 'Rise of the Robots', description: 'The Robots are coming: machines ARE and have the potential to replace common and highly skilled human tasks from driving to serving food to sewing to surgery.' },
  { name: 'Humanity, Augmented', description: 'Machine learning & Artificial Intelligence makes us smarter. AI will advance to more complex decision making i.e. business models invented by machine, not people.' },
  { name: 'Mobile wallets and payments', description: 'Credit card & debit card info stored in a mobile device allowing customers pay with a tap of their smartphone, tablet, or smartwatch.' },
  { name: 'Big Data Trend Prediction', description: 'Analyzing extremely large data sets to reveal patterns and trends; then using this data to predict consumer behavior & product trends.' },
  { name: 'Experiential Commerce', description: 'Dev-driven commerce. Turns mundane experiences into moments of delight. Enables buying while doing things like dishes, watching TV or tracking fitness goals.' },
  { name: 'Customer co-creation as the norm', description: 'Brands and customers working together to co-create the next programs, products or services that a brand will offer to the marketplace.' },
  { name: 'Grocery & Food', description: 'The trend of food and pre-made meals being offered at more retail outlets, plus more grab n’ go and delivery options for food/meals.' }])

Industry.create([
  { name: 'Retailer' },
  { name: 'Solution Provider' },
  { name: 'Design/Creative Agency' },
  { name: 'Other' }])

Role.create([
  { name: 'C-Level Executive' },
  { name: 'VP or Director' },
  { name: 'Project Manager' },
  { name: 'Product Manager' },
  { name: 'Manager - Other' },
  { name: 'Architect' },
  { name: 'Developer' },
  { name: 'Analyst' },
  { name: 'Tester' },
  { name: 'Consultant' },
  { name: 'Student' },
  { name: 'Other' }])
