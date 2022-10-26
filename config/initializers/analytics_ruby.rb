Analytics = Segment::Analytics.new({
    write_key: 'Fc93iGPeXXJrLGy1wzTAZJw9IAybykP8',
    on_error: Proc.new { |status, msg| print msg }
})