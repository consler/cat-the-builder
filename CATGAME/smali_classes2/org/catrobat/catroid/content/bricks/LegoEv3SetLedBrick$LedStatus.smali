.class public final enum Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;
.super Ljava/lang/Enum;
.source "LegoEv3SetLedBrick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LedStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

.field public static final enum LED_GREEN:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

.field public static final enum LED_GREEN_FLASHING:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

.field public static final enum LED_GREEN_PULSE:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

.field public static final enum LED_OFF:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

.field public static final enum LED_ORANGE:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

.field public static final enum LED_ORANGE_FLASHING:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

.field public static final enum LED_ORANGE_PULSE:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

.field public static final enum LED_RED:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

.field public static final enum LED_RED_FLASHING:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

.field public static final enum LED_RED_PULSE:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 44
    new-instance v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    const-string v1, "LED_OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->LED_OFF:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    const-string v1, "LED_GREEN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->LED_GREEN:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    const-string v1, "LED_RED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->LED_RED:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    const-string v1, "LED_ORANGE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->LED_ORANGE:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    .line 45
    new-instance v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    const-string v1, "LED_GREEN_FLASHING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->LED_GREEN_FLASHING:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    const-string v1, "LED_RED_FLASHING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->LED_RED_FLASHING:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    const-string v1, "LED_ORANGE_FLASHING"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->LED_ORANGE_FLASHING:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    .line 46
    new-instance v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    const-string v1, "LED_GREEN_PULSE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->LED_GREEN_PULSE:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    const-string v1, "LED_RED_PULSE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->LED_RED_PULSE:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    const-string v1, "LED_ORANGE_PULSE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->LED_ORANGE_PULSE:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    .line 43
    const/16 v1, 0xa

    new-array v1, v1, [Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    sget-object v12, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->LED_OFF:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    aput-object v12, v1, v2

    sget-object v2, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->LED_GREEN:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->LED_RED:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    aput-object v2, v1, v4

    sget-object v2, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->LED_ORANGE:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    aput-object v2, v1, v5

    sget-object v2, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->LED_GREEN_FLASHING:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    aput-object v2, v1, v6

    sget-object v2, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->LED_RED_FLASHING:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    aput-object v2, v1, v7

    sget-object v2, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->LED_ORANGE_FLASHING:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    aput-object v2, v1, v8

    sget-object v2, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->LED_GREEN_PULSE:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    aput-object v2, v1, v9

    sget-object v2, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->LED_RED_PULSE:Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->$VALUES:[Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 43
    const-class v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;
    .locals 1

    .line 43
    sget-object v0, Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->$VALUES:[Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/content/bricks/LegoEv3SetLedBrick$LedStatus;

    return-object v0
.end method
