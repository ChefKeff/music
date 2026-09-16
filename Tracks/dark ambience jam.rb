use_bpm 145
use_random_seed 42

live_loop :sci_fi do
  use_synth :hollow
  with_fx :echo, decay: 3, phase: 2, mix: 0.8 do
    p = play (chord :G3, :minor7).choose - [0, 12, -12].choose, divisor: 0.01, div_slide: rrand(0, 10), depth: rrand(0.001, 2), attack: 0.01, release: rrand(0, 5), amp: 0.5
    control p, divisor: rrand(0.001, 50)
    sleep [0.5, 1, 2].choose
  end
end

live_loop :bass do
  use_synth :bass_foundation
  with_fx :bitcrusher do
    with_fx :nlpf, cutoff: 40, amp: 0.4 do
      play_pattern_timed [:g1, :ds2], [2.5, 0.5], release: 0.7, amp: 0.6
      sleep 2
      play_pattern_timed [:d2, :c2], [1.5, 0.5], release: 0.7, amp: 0.6
      sleep 1
    end
  end
end

live_loop :arp do
  use_synth :beep
  with_fx :echo, decay: 3, phase: 2, mix: 0.8 do
    with_fx :flanger, amp: 0.2 do
      p = play (chord :G4, :m11).choose - [0, 7, -5, 12, -12].choose, divisor: 0.01, div_slide: rrand(0, 10), depth: rrand(0.001, 2), attack: 0.01, release: rrand(0, 5), amp: 0.2
      sleep 0.5
    end
  end
  
end


