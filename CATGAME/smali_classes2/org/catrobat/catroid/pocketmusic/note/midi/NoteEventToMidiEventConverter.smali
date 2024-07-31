.class public Lorg/catrobat/catroid/pocketmusic/note/midi/NoteEventToMidiEventConverter;
.super Ljava/lang/Object;
.source "NoteEventToMidiEventConverter.java"


# static fields
.field private static final DEFAULT_NOISE:I = 0x40

.field private static final DEFAULT_SILENT:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertNoteEvent(JLorg/catrobat/catroid/pocketmusic/note/NoteEvent;I)Lcom/pdrogfer/mididroid/event/ChannelEvent;
    .locals 13
    .param p1, "tick"    # J
    .param p3, "noteEvent"    # Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;
    .param p4, "channel"    # I

    .line 37
    invoke-virtual/range {p3 .. p3}, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->isNoteOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lcom/pdrogfer/mididroid/event/NoteOn;

    invoke-virtual/range {p3 .. p3}, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->getNoteName()Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getMidi()I

    move-result v5

    const/16 v6, 0x40

    move-object v1, v0

    move-wide v2, p1

    move/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/pdrogfer/mididroid/event/NoteOn;-><init>(JIII)V

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lcom/pdrogfer/mididroid/event/NoteOff;

    invoke-virtual/range {p3 .. p3}, Lorg/catrobat/catroid/pocketmusic/note/NoteEvent;->getNoteName()Lorg/catrobat/catroid/pocketmusic/note/NoteName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/note/NoteName;->getMidi()I

    move-result v11

    const/4 v12, 0x0

    move-object v7, v0

    move-wide v8, p1

    move/from16 v10, p4

    invoke-direct/range {v7 .. v12}, Lcom/pdrogfer/mididroid/event/NoteOff;-><init>(JIII)V

    return-object v0
.end method
