.class synthetic Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl$1;
.super Ljava/lang/Object;
.source "PhiroImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$catrobat$catroid$formulaeditor$Sensors:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 260
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/Sensors;->values()[Lorg/catrobat/catroid/formulaeditor/Sensors;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$Sensors:[I

    :try_start_0
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_BOTTOM_LEFT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$Sensors:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_BOTTOM_RIGHT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$Sensors:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_FRONT_LEFT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$Sensors:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_FRONT_RIGHT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$Sensors:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_SIDE_LEFT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$Sensors:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_SIDE_RIGHT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    return-void
.end method
