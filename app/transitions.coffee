transitions = ( ->
  @transition(
    @fromRoute('dashboard.hunts.new.photo'),
    @toRoute('dashboard.hunts.new.hunt-items'),
    @use('toLeft'),
  )
)

`export default transitions`
