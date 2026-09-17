use_bpm 130

live_loop :met1 do
  sleep 1
end


live_loop :kik, sync: :met1 do
  sample :bd_haus, rate: 1
  sleep 1
end

live_loop :hat, sync: :met1 do
  with_fx :bitcrusher, sample_rate: 1000012000 do
    sleep 0.5
    sample :hat_snap, rate: 1, amp: 0.6
    sleep 0.5
  end
end


live_loop :clap, sync: :met1 do
  sleep 1
  # sample :sn_dolf, amp: 0.8
  sleep 1
end

live_loop :bass, sync: :met1 do
  with_fx :tremolo, depth: 0.7, phase: 1 do
    with_fx :lpf, cutoff: 100 do
      use_synth :bass_foundation
      play_pattern_timed [:C2,:C2,:C2,:Ds3,:C2,:G4,:F4,:C3], [0.25], release: 0.5
    end
  end
end

live_loop :chords, sync: :met1 do
  with_fx :tremolo, depth: 0.7, phase: 1 do
    with_fx :slicer do
      with_fx :reverb, mix: 0.7, room: 0.3 do
        use_synth :dsaw
        play_pattern_timed [:C3,:Ds4,:C3,:Ds4,:C3,:Ds4,:C3,:Ds4], [0.25, 0.5, 0.25, 0.5, 0.25, 0.5], release: 0.5, amp: 0.3
        play_pattern_timed [:G3,:Ds4,:G3,:Ds4,:Gs3,:Ds4,:Gs3,:Ds4], [0.25, 0.5, 0.25, 0.5, 0.25, 0.5], release: 0.5, amp: 0.3
      end
    end
  end
end

