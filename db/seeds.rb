Book.destroy_all

Book.create!(
  [
    {
      title: 'Zen and the Art of Motorcycle maintenance',
      author: 'Robert Pirsig',
      description: 'A fantastic journey ...',
      rating: 5,
      amazon_id: '0099322617',
      finished_on: 10.days.ago
    }, {
      title: '100 Years of Solitude',
      author: 'Gabriel Garcia Marquez',
      description: 'Makondo and its inhabitants through years.',
      rating: 5,
      amazon_id: '0241968585',
      finished_on: 10.days.ago
    }, {
      title: 'No Irish, No Blacks, No Dogs',
      author: 'John Lydon',
      description: '... captures the rancid flavour of Lydon ...',
      rating: 4,
      amazon_id: '0859653412',
      finished_on: nil
    },
  ]
)
