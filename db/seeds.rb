Book.destroy_all

Book.create!(
  [
    {
      title: 'Zen and the art of ...',
      author: 'Robert Pirsig',
      description: 'Motorcycle maintenance',
      rating: 5,
      amazon_id: '123A',
      finished_on: 10.days.ago
    }, {
      title: 'Zen and the art of ...',
      author: 'Robert Pirsig',
      description: 'Motorcycle maintenance',
      rating: 5,
      amazon_id: '123A',
      finished_on: 10.days.ago
    }, {
      title: 'Zen and the art of ...',
      author: 'Robert Pirsig',
      description: 'Motorcycle maintenance',
      rating: 5,
      amazon_id: '123A',
      finished_on: nil
    },
  ]
)
