.class public final enum Lorg/catrobat/catroid/common/ScreenModes;
.super Ljava/lang/Enum;
.source "ScreenModes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/common/ScreenModes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/common/ScreenModes;

.field public static final enum MAXIMIZE:Lorg/catrobat/catroid/common/ScreenModes;

.field public static final enum STRETCH:Lorg/catrobat/catroid/common/ScreenModes;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lorg/catrobat/catroid/common/ScreenModes;

    const-string v1, "STRETCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/common/ScreenModes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/common/ScreenModes;->STRETCH:Lorg/catrobat/catroid/common/ScreenModes;

    new-instance v0, Lorg/catrobat/catroid/common/ScreenModes;

    const-string v1, "MAXIMIZE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/common/ScreenModes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/common/ScreenModes;->MAXIMIZE:Lorg/catrobat/catroid/common/ScreenModes;

    .line 25
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/catrobat/catroid/common/ScreenModes;

    sget-object v4, Lorg/catrobat/catroid/common/ScreenModes;->STRETCH:Lorg/catrobat/catroid/common/ScreenModes;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/catrobat/catroid/common/ScreenModes;->$VALUES:[Lorg/catrobat/catroid/common/ScreenModes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/common/ScreenModes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/catrobat/catroid/common/ScreenModes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/common/ScreenModes;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/common/ScreenModes;
    .locals 1

    .line 25
    sget-object v0, Lorg/catrobat/catroid/common/ScreenModes;->$VALUES:[Lorg/catrobat/catroid/common/ScreenModes;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/common/ScreenModes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/common/ScreenModes;

    return-object v0
.end method
