
Ndef(\test).play;
Ndef(\test).fadeTime = 3;
Ndef(\test).free;

(
Ndef(\test, {
    var snd = PlayBuf.ar(~buf1.numChannels, ~buf1, [-1, 1] * MouseX.kr(1, 1.1), loop: 1);
    snd = (snd * 0.5) + BPF.ar(snd, MouseX.kr([1000, 5000], [4000, 9999]), 0.1);
    snd = FreeVerb.ar(snd, 0.5, 0.9) * 2;
    snd = snd + PitchShift.ar(snd, 0.2, MouseY.kr(1, 2))
}
)
)
