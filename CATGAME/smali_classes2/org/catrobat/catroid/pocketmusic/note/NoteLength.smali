.class public final enum Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
.super Ljava/lang/Enum;
.source "NoteLength.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/pocketmusic/note/NoteLength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

.field private static final DEFAULT_TICK_DURATION_MODIFIER:J = 0x8L

.field public static final enum EIGHT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

.field public static final enum EIGHT_DOT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

.field public static final enum HALF:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

.field public static final enum HALF_DOT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

.field private static final MINUTE_IN_SECONDS:I = 0x3c

.field public static final enum QUARTER:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

.field public static final enum QUARTER_DOT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

.field private static final SECOND_IN_MILLISECONDS:I = 0x3e8

.field public static final enum SIXTEENTH:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

.field private static final SMALLEST_NOTE_LENGTH:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

.field private static final SORTED_NOTE_LENGTHS:[Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

.field public static final enum WHOLE:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

.field public static final enum WHOLE_DOT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

.field private static millisecondsCalculationMap:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "[J>;"
        }
    .end annotation
.end field


# instance fields
.field private length:F


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 28
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    const-string v1, "WHOLE_DOT"

    const/4 v2, 0x0

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->WHOLE_DOT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    const-string v1, "WHOLE"

    const/4 v3, 0x1

    const/high16 v4, 0x40800000    # 4.0f

    invoke-direct {v0, v1, v3, v4}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->WHOLE:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    const-string v1, "HALF_DOT"

    const/4 v4, 0x2

    const/high16 v5, 0x40400000    # 3.0f

    invoke-direct {v0, v1, v4, v5}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->HALF_DOT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    const-string v1, "HALF"

    const/4 v5, 0x3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v5, v6}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->HALF:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    const-string v1, "QUARTER_DOT"

    const/4 v6, 0x4

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1, v6, v7}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->QUARTER_DOT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    .line 29
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    const-string v1, "QUARTER"

    const/4 v7, 0x5

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v7, v8}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->QUARTER:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    const-string v1, "EIGHT_DOT"

    const/4 v8, 0x6

    const/high16 v9, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v8, v9}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->EIGHT_DOT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    const-string v1, "EIGHT"

    const/4 v9, 0x7

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v9, v10}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->EIGHT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    const-string v1, "SIXTEENTH"

    const/16 v10, 0x8

    const/high16 v11, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v10, v11}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->SIXTEENTH:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    .line 27
    const/16 v1, 0x9

    new-array v11, v1, [Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    sget-object v12, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->WHOLE_DOT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    aput-object v12, v11, v2

    sget-object v13, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->WHOLE:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    aput-object v13, v11, v3

    sget-object v14, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->HALF_DOT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    aput-object v14, v11, v4

    sget-object v15, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->HALF:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    aput-object v15, v11, v5

    sget-object v16, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->QUARTER_DOT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    aput-object v16, v11, v6

    sget-object v17, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->QUARTER:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    aput-object v17, v11, v7

    sget-object v18, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->EIGHT_DOT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    aput-object v18, v11, v8

    sget-object v19, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->EIGHT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    aput-object v19, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->$VALUES:[Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    .line 31
    new-array v1, v1, [Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    aput-object v0, v1, v2

    aput-object v19, v1, v3

    aput-object v18, v1, v4

    aput-object v17, v1, v5

    aput-object v16, v1, v6

    aput-object v15, v1, v7

    aput-object v14, v1, v8

    aput-object v13, v1, v9

    aput-object v12, v1, v10

    sput-object v1, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->SORTED_NOTE_LENGTHS:[Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    .line 33
    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->SMALLEST_NOTE_LENGTH:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    .line 39
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->millisecondsCalculationMap:Landroidx/collection/SparseArrayCompat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .param p3, "length"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->length:F

    .line 43
    return-void
.end method

.method private static calculateMilliseconds(I)[J
    .locals 5
    .param p0, "beatsPerMinute"    # I

    .line 134
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->SORTED_NOTE_LENGTHS:[Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    array-length v0, v0

    new-array v0, v0, [J

    .line 136
    .local v0, "milliseconds":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 137
    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->SORTED_NOTE_LENGTHS:[Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    aget-object v2, v2, v1

    .line 138
    .local v2, "noteLength":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    invoke-virtual {v2, p0}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->toMilliseconds(I)J

    move-result-wide v3

    aput-wide v3, v0, v1

    .line 136
    .end local v2    # "noteLength":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static getMilliseconds(I)[J
    .locals 2
    .param p0, "beatsPerMinute"    # I

    .line 126
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->millisecondsCalculationMap:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 127
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->millisecondsCalculationMap:Landroidx/collection/SparseArrayCompat;

    invoke-static {p0}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->calculateMilliseconds(I)[J

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 130
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->millisecondsCalculationMap:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static getNoteLengthFromMilliseconds(JI)Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .locals 12
    .param p0, "millis"    # J
    .param p2, "beatsPerMinute"    # I

    .line 63
    invoke-static {p2}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->getMilliseconds(I)[J

    move-result-object v0

    .line 64
    .local v0, "calculatedMilliseconds":[J
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    .line 65
    .local v1, "bottomLimit":J
    const/4 v3, 0x0

    .line 66
    .local v3, "bottomIndex":I
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, v0, v4

    .line 67
    .local v4, "topLimit":J
    const/4 v6, 0x0

    .line 69
    .local v6, "topIndex":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v0

    if-ge v7, v8, :cond_1

    .line 70
    aget-wide v8, v0, v7

    .line 71
    .local v8, "calculatedMillis":J
    cmp-long v10, p0, v8

    if-lez v10, :cond_0

    .line 72
    move-wide v1, v8

    .line 73
    move v3, v7

    .line 69
    .end local v8    # "calculatedMillis":J
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 75
    .restart local v8    # "calculatedMillis":J
    :cond_0
    move-wide v4, v8

    .line 76
    move v6, v7

    .line 81
    .end local v7    # "i":I
    .end local v8    # "calculatedMillis":J
    :cond_1
    sub-long v7, v1, p0

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 82
    .local v7, "distanceBottom":J
    sub-long v9, v4, p0

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    .line 84
    .local v9, "distanceTop":J
    cmp-long v11, v7, v9

    if-lez v11, :cond_2

    .line 85
    sget-object v11, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->SORTED_NOTE_LENGTHS:[Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    aget-object v11, v11, v6

    return-object v11

    .line 87
    :cond_2
    sget-object v11, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->SORTED_NOTE_LENGTHS:[Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    aget-object v11, v11, v3

    return-object v11
.end method

.method public static getNoteLengthFromTickDuration(JI)Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .locals 7
    .param p0, "duration"    # J
    .param p2, "beatsPerMinute"    # I

    .line 46
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->SMALLEST_NOTE_LENGTH:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    .line 47
    .local v0, "noteLength":Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->values()[Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    move-result-object v1

    .line 49
    .local v1, "allNoteLengths":[Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 50
    aget-object v3, v1, v2

    invoke-virtual {v3, p2}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->toTicks(I)J

    move-result-wide v3

    sub-long v3, p0, v3

    .line 52
    .local v3, "difference":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 53
    goto :goto_1

    .line 56
    :cond_0
    aget-object v0, v1, v2

    .line 49
    .end local v3    # "difference":J
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 59
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static tickToMilliseconds(J)J
    .locals 4
    .param p0, "tick"    # J

    .line 100
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/pocketmusic/note/NoteLength;
    .locals 1

    .line 27
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->$VALUES:[Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    return-object v0
.end method


# virtual methods
.method public getFlag()Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;
    .locals 1

    .line 108
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->SIXTEENTH:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    if-ne p0, v0, :cond_0

    .line 109
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;->DOUBLE_FLAG:Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;

    return-object v0

    .line 110
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->EIGHT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    if-eq p0, v0, :cond_2

    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->EIGHT_DOT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;->NO_FLAG:Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;

    return-object v0

    .line 111
    :cond_2
    :goto_0
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;->SINGLE_FLAG:Lorg/catrobat/catroid/pocketmusic/note/NoteFlag;

    return-object v0
.end method

.method public hasDot()Z
    .locals 1

    .line 118
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->WHOLE_DOT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    if-eq v0, p0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->HALF_DOT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    if-eq v0, p0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->QUARTER_DOT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    if-eq v0, p0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->EIGHT_DOT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasStem()Z
    .locals 1

    .line 104
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->WHOLE:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->WHOLE_DOT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHalfOrHigher()Z
    .locals 1

    .line 122
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->WHOLE_DOT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    if-eq v0, p0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->WHOLE:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    if-eq v0, p0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->HALF_DOT:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    if-eq v0, p0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->HALF:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toMilliseconds(I)J
    .locals 2
    .param p1, "beatsPerMinute"    # I

    .line 96
    int-to-float v0, p1

    iget v1, p0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->length:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public toTicks(I)J
    .locals 4
    .param p1, "beatsPerMinute"    # I

    .line 92
    int-to-long v0, p1

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->length:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
