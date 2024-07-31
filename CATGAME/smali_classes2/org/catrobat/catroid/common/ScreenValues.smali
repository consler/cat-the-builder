.class public final Lorg/catrobat/catroid/common/ScreenValues;
.super Ljava/lang/Object;
.source "ScreenValues.java"


# static fields
.field public static final CAST_SCREEN_HEIGHT:I = 0x2d0

.field public static final CAST_SCREEN_WIDTH:I = 0x500

.field private static final DEFAULT_SCREEN_HEIGHT:I = 0x300

.field private static final DEFAULT_SCREEN_WIDTH:I = 0x500

.field public static SCREEN_HEIGHT:I

.field public static SCREEN_WIDTH:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getAspectRatio()F
    .locals 2

    .line 44
    sget v0, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    if-eqz v0, :cond_0

    sget v0, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    if-nez v0, :cond_1

    .line 45
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/common/ScreenValues;->setToDefaultScreenSize()V

    .line 47
    :cond_1
    sget v0, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static getScreenHeightForProject(Lorg/catrobat/catroid/content/Project;)I
    .locals 1
    .param p0, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 56
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->isCastProject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/16 v0, 0x2d0

    return v0

    .line 60
    :cond_0
    sget v0, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    return v0
.end method

.method public static getScreenWidthForProject(Lorg/catrobat/catroid/content/Project;)I
    .locals 1
    .param p0, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 64
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->isCastProject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/16 v0, 0x500

    return v0

    .line 68
    :cond_0
    sget v0, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    return v0
.end method

.method public static setToDefaultScreenSize()V
    .locals 1

    .line 51
    const/16 v0, 0x500

    sput v0, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    .line 52
    const/16 v0, 0x300

    sput v0, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    .line 53
    return-void
.end method
