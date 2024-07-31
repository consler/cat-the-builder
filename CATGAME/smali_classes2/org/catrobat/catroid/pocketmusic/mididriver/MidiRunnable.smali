.class public Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;
.super Ljava/lang/Object;
.source "MidiRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final channel:B

.field private final duration:J

.field private final handler:Landroid/os/Handler;

.field private manualNoteOff:Z

.field private final midiNotePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

.field private final noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

.field private pianoRow:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

.field private final pianoView:Lorg/catrobat/catroid/pocketmusic/ui/PianoView;

.field private scheduledTime:J

.field private final signal:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;Lorg/catrobat/catroid/pocketmusic/note/NoteName;JLandroid/os/Handler;Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;Lorg/catrobat/catroid/pocketmusic/ui/PianoView;B)V
    .locals 2
    .param p1, "signal"    # Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;
    .param p2, "noteName"    # Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    .param p3, "duration"    # J
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "midiNotePlayer"    # Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;
    .param p7, "pianoView"    # Lorg/catrobat/catroid/pocketmusic/ui/PianoView;
    .param p8, "channel"    # B

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->scheduledTime:J

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->manualNoteOff:Z

    .line 45
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->signal:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    .line 46
    iput-object p2, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    .line 47
    iput-wide p3, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->duration:J

    .line 48
    iput-object p5, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->handler:Landroid/os/Handler;

    .line 49
    iput-object p6, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->midiNotePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    .line 50
    iput-object p7, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->pianoView:Lorg/catrobat/catroid/pocketmusic/ui/PianoView;

    .line 51
    iput-byte p8, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->channel:B

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;Lorg/catrobat/catroid/pocketmusic/note/NoteName;JLandroid/os/Handler;Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;Lorg/catrobat/catroid/pocketmusic/ui/PianoView;BLorg/catrobat/catroid/pocketmusic/note/NoteName;)V
    .locals 2
    .param p1, "signal"    # Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;
    .param p2, "noteName"    # Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    .param p3, "duration"    # J
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "midiNotePlayer"    # Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;
    .param p7, "pianoView"    # Lorg/catrobat/catroid/pocketmusic/ui/PianoView;
    .param p8, "channel"    # B
    .param p9, "pianoRow"    # Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->scheduledTime:J

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->manualNoteOff:Z

    .line 56
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->signal:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    .line 57
    iput-object p2, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    .line 58
    iput-wide p3, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->duration:J

    .line 59
    iput-object p5, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->handler:Landroid/os/Handler;

    .line 60
    iput-object p6, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->midiNotePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    .line 61
    iput-object p7, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->pianoView:Lorg/catrobat/catroid/pocketmusic/ui/PianoView;

    .line 62
    iput-byte p8, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->channel:B

    .line 63
    iput-object p9, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->pianoRow:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    .line 64
    return-void
.end method


# virtual methods
.method public getNoteName()Lorg/catrobat/catroid/pocketmusic/note/NoteName;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    return-object v0
.end method

.method getScheduledTime()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->scheduledTime:J

    return-wide v0
.end method

.method public run()V
    .locals 13

    .line 80
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->signal:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->getSignalByte()B

    move-result v0

    .line 81
    .local v0, "status":B
    iget-byte v1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->channel:B

    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 82
    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->midiNotePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    invoke-virtual {v2}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getMidi()I

    move-result v2

    const/16 v3, 0x7f

    invoke-virtual {v1, v0, v2, v3}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->sendMidi(III)V

    .line 83
    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->pianoView:Lorg/catrobat/catroid/pocketmusic/ui/PianoView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->pianoRow:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    if-eqz v2, :cond_0

    .line 84
    sget-object v3, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->NOTE_ON:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    iget-object v4, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->signal:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;->setKeyColor(Lorg/catrobat/catroid/pocketmusic/note/NoteName;Z)V

    .line 86
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->signal:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->NOTE_ON:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->manualNoteOff:Z

    if-nez v1, :cond_1

    .line 87
    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->handler:Landroid/os/Handler;

    new-instance v12, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->NOTE_OFF:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    iget-object v4, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->noteName:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    iget-wide v5, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->duration:J

    iget-object v7, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->handler:Landroid/os/Handler;

    iget-object v8, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->midiNotePlayer:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    iget-object v9, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->pianoView:Lorg/catrobat/catroid/pocketmusic/ui/PianoView;

    iget-byte v10, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->channel:B

    iget-object v11, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->pianoRow:Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;-><init>(Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;Lorg/catrobat/catroid/pocketmusic/note/NoteName;JLandroid/os/Handler;Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;Lorg/catrobat/catroid/pocketmusic/ui/PianoView;BLorg/catrobat/catroid/pocketmusic/note/NoteName;)V

    iget-wide v2, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->duration:J

    invoke-virtual {v1, v12, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    :cond_1
    return-void
.end method

.method setManualNoteOff(Z)V
    .locals 0
    .param p1, "manual"    # Z

    .line 67
    iput-boolean p1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->manualNoteOff:Z

    .line 68
    return-void
.end method

.method setScheduledTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 71
    iput-wide p1, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiRunnable;->scheduledTime:J

    .line 72
    return-void
.end method
