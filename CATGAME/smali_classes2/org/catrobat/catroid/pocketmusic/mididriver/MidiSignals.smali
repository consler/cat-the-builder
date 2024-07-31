.class public final enum Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;
.super Ljava/lang/Enum;
.source "MidiSignals.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

.field public static final enum ACTIVE_SENSING:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

.field public static final enum CHANNEL_PRESSURE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

.field public static final enum CHANNEL_VOLUME:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

.field public static final enum CONTINUE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

.field public static final enum CONTROL_CHANGE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

.field public static final enum END_OF_EXCLUSIVE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

.field public static final enum MIDI_TIME_CODE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

.field public static final enum NOTE_OFF:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

.field public static final enum NOTE_ON:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

.field public static final enum PITCH_BEND:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

.field public static final enum POLY_PRESSURE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

.field public static final enum PROGRAM_CHANGE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

.field public static final enum SONG_POSITION_POBYTEER:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

.field public static final enum SONG_SELECT:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

.field public static final enum START:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

.field public static final enum STOP:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

.field public static final enum SYSTEM_RESET:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

.field public static final enum TIMING_CLOCK:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

.field public static final enum TUNE_REQUEST:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;


# instance fields
.field private signalByte:B


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 27
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const-string v1, "CHANNEL_VOLUME"

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->CHANNEL_VOLUME:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    .line 28
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const-string v1, "MIDI_TIME_CODE"

    const/4 v4, 0x1

    const/16 v5, -0xf

    invoke-direct {v0, v1, v4, v5}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->MIDI_TIME_CODE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    .line 29
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const-string v1, "SONG_POSITION_POBYTEER"

    const/4 v5, 0x2

    const/16 v6, -0xe

    invoke-direct {v0, v1, v5, v6}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->SONG_POSITION_POBYTEER:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    .line 30
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const-string v1, "SONG_SELECT"

    const/4 v6, 0x3

    const/16 v7, -0xd

    invoke-direct {v0, v1, v6, v7}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->SONG_SELECT:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    .line 31
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const-string v1, "TUNE_REQUEST"

    const/4 v7, 0x4

    const/16 v8, -0xa

    invoke-direct {v0, v1, v7, v8}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->TUNE_REQUEST:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    .line 32
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const-string v1, "END_OF_EXCLUSIVE"

    const/4 v8, 0x5

    const/16 v9, -0x9

    invoke-direct {v0, v1, v8, v9}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->END_OF_EXCLUSIVE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    .line 33
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const-string v1, "TIMING_CLOCK"

    const/4 v9, 0x6

    const/4 v10, -0x8

    invoke-direct {v0, v1, v9, v10}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->TIMING_CLOCK:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    .line 34
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const-string v1, "START"

    const/4 v10, -0x6

    invoke-direct {v0, v1, v3, v10}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->START:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    .line 35
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const-string v1, "CONTINUE"

    const/16 v10, 0x8

    const/4 v11, -0x5

    invoke-direct {v0, v1, v10, v11}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->CONTINUE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    .line 36
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const-string v1, "STOP"

    const/16 v11, 0x9

    const/4 v12, -0x4

    invoke-direct {v0, v1, v11, v12}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->STOP:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    .line 37
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const-string v1, "ACTIVE_SENSING"

    const/16 v12, 0xa

    const/4 v13, -0x2

    invoke-direct {v0, v1, v12, v13}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->ACTIVE_SENSING:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    .line 38
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const-string v1, "SYSTEM_RESET"

    const/16 v13, 0xb

    const/4 v14, -0x1

    invoke-direct {v0, v1, v13, v14}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->SYSTEM_RESET:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    .line 39
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const-string v1, "NOTE_OFF"

    const/16 v14, 0xc

    const/16 v15, -0x80

    invoke-direct {v0, v1, v14, v15}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->NOTE_OFF:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    .line 40
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const-string v1, "NOTE_ON"

    const/16 v15, 0xd

    const/16 v14, -0x70

    invoke-direct {v0, v1, v15, v14}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->NOTE_ON:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    .line 41
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const-string v1, "POLY_PRESSURE"

    const/16 v14, 0xe

    const/16 v15, -0x60

    invoke-direct {v0, v1, v14, v15}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->POLY_PRESSURE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    .line 42
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const-string v1, "CONTROL_CHANGE"

    const/16 v15, 0xf

    const/16 v14, -0x50

    invoke-direct {v0, v1, v15, v14}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->CONTROL_CHANGE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    .line 43
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const-string v1, "PROGRAM_CHANGE"

    const/16 v14, 0x10

    const/16 v15, -0x40

    invoke-direct {v0, v1, v14, v15}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->PROGRAM_CHANGE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    .line 44
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const-string v1, "CHANNEL_PRESSURE"

    const/16 v15, 0x11

    const/16 v14, -0x30

    invoke-direct {v0, v1, v15, v14}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->CHANNEL_PRESSURE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    .line 45
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const-string v1, "PITCH_BEND"

    const/16 v14, 0x12

    const/16 v15, -0x20

    invoke-direct {v0, v1, v14, v15}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->PITCH_BEND:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    .line 25
    const/16 v1, 0x13

    new-array v1, v1, [Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    sget-object v15, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->CHANNEL_VOLUME:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    aput-object v15, v1, v2

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->MIDI_TIME_CODE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    aput-object v2, v1, v4

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->SONG_POSITION_POBYTEER:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    aput-object v2, v1, v5

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->SONG_SELECT:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    aput-object v2, v1, v6

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->TUNE_REQUEST:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    aput-object v2, v1, v7

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->END_OF_EXCLUSIVE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    aput-object v2, v1, v8

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->TIMING_CLOCK:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    aput-object v2, v1, v9

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->START:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->CONTINUE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    aput-object v2, v1, v10

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->STOP:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    aput-object v2, v1, v11

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->ACTIVE_SENSING:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    aput-object v2, v1, v12

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->SYSTEM_RESET:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    aput-object v2, v1, v13

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->NOTE_OFF:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->NOTE_ON:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->POLY_PRESSURE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->CONTROL_CHANGE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->PROGRAM_CHANGE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->CHANNEL_PRESSURE:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    aput-object v0, v1, v14

    sput-object v1, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->$VALUES:[Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .param p3, "signalByte"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-byte p3, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->signalByte:B

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;
    .locals 1

    .line 25
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->$VALUES:[Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;

    return-object v0
.end method


# virtual methods
.method public getSignalByte()B
    .locals 1

    .line 54
    iget-byte v0, p0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSignals;->signalByte:B

    return v0
.end method
