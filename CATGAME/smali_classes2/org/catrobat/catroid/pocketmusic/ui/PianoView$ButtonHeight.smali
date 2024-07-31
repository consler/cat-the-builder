.class final enum Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;
.super Ljava/lang/Enum;
.source "PianoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/pocketmusic/ui/PianoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ButtonHeight"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

.field public static final enum doubleButtonHeight:Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

.field public static final enum oneAndAHalfButtonHeight:Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

.field public static final enum singleButtonHeight:Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 243
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    const-string v1, "singleButtonHeight"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->singleButtonHeight:Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    .line 244
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    const-string v1, "oneAndAHalfButtonHeight"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->oneAndAHalfButtonHeight:Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    .line 245
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    const-string v1, "doubleButtonHeight"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->doubleButtonHeight:Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    .line 242
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    sget-object v5, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->singleButtonHeight:Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    aput-object v5, v1, v2

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->oneAndAHalfButtonHeight:Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->$VALUES:[Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 242
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 242
    const-class v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;
    .locals 1

    .line 242
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->$VALUES:[Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/pocketmusic/ui/PianoView$ButtonHeight;

    return-object v0
.end method
