.class public final enum Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;
.super Ljava/lang/Enum;
.source "PhiroRGBLightBrick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Eye"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

.field public static final enum BOTH:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

.field public static final enum LEFT:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

.field public static final enum RIGHT:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 53
    new-instance v0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;->LEFT:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    const-string v1, "RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;->RIGHT:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    new-instance v0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    const-string v1, "BOTH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;->BOTH:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    .line 52
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    sget-object v5, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;->LEFT:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    aput-object v5, v1, v2

    sget-object v2, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;->RIGHT:Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;->$VALUES:[Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 52
    const-class v0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;
    .locals 1

    .line 52
    sget-object v0, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;->$VALUES:[Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick$Eye;

    return-object v0
.end method
