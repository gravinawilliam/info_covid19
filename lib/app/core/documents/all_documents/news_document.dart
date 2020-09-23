const String getFeaturedNewsSubscription = ''' 
subscription {
  news(order_by: {created_at: desc}, where: {spotlight: {_eq: true}}) {
    author
    image_url
    link_url
    name
  }
}
''';
