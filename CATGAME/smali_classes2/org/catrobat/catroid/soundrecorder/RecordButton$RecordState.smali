.class public final enum Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;
.super Ljava/lang/Enum;
.source "RecordButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/soundrecorder/RecordButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

.field public static final enum RECORD:Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

.field public static final enum STOP:Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 55
    new-instance v0, Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

    const-string v1, "RECORD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;->RECORD:Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

    new-instance v0, Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

    const-string v1, "STOP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;->STOP:Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

    .line 54
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

    sget-object v4, Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;->RECORD:Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;->$VALUES:[Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 54
    const-class v0, Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;
    .locals 1

    .line 54
    sget-object v0, Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;->$VALUES:[Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

    return-object v0
.end method
