.class final enum Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;
.super Ljava/lang/Enum;
.source "RaspberryPiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GpioVersionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

.field public static final enum BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

.field public static final enum COMPUTE_MODULE:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

.field public static final enum SMALL_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 49
    new-instance v0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v1, "SMALL_GPIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->SMALL_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    new-instance v0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v1, "BIG_GPIO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    new-instance v0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v1, "COMPUTE_MODULE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->COMPUTE_MODULE:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    .line 48
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    sget-object v5, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->SMALL_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    aput-object v5, v1, v2

    sget-object v2, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->$VALUES:[Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 48
    const-class v0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;
    .locals 1

    .line 48
    sget-object v0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->$VALUES:[Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    return-object v0
.end method
