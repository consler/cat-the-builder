.class public final Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;
.super Ljava/lang/Object;
.source "RaspberryPiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;


# instance fields
.field public connection:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

.field private gpioVersionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;",
            ">;"
        }
    .end annotation
.end field

.field private pinInterrupts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->connection:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    .line 54
    iput-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->pinInterrupts:Ljava/util/Set;

    .line 64
    invoke-direct {p0}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->initGpioVersionMap()V

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->pinInterrupts:Ljava/util/Set;

    .line 66
    return-void
.end method

.method public static getInstance()Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;
    .locals 1

    .line 57
    sget-object v0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->instance:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;

    invoke-direct {v0}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->instance:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;

    .line 60
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->instance:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;

    return-object v0
.end method

.method private initGpioVersionMap()V
    .locals 3

    .line 171
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "900021"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "900032"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "900092"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "900093"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "9000c1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "9020e0"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "920092"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "920093"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->COMPUTE_MODULE:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "900061"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "a01040"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "a01041"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "a02082"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->COMPUTE_MODULE:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "a020a0"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "a020d3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "a02042"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "a21041"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "a22042"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "a22082"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->COMPUTE_MODULE:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "a220a0"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "a32082"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "a52082"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "a22083"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->COMPUTE_MODULE:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "a02100"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "a03111"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "b03111"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "b03112"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "b03114"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "c03111"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "c03112"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "c03114"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "d03114"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "c03130"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "0015"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "0014"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "0013"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "0012"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->COMPUTE_MODULE:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "0011"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "0010"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->SMALL_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "000f"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->SMALL_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "000e"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->SMALL_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "000d"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->SMALL_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "0009"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->SMALL_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "0008"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->SMALL_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "0007"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->SMALL_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "0006"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->SMALL_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "0005"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->SMALL_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "0004"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->SMALL_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "0003"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->SMALL_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "0002"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->SMALL_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const-string v2, "Beta"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-void
.end method


# virtual methods
.method public addPinInterrupt(I)V
    .locals 2
    .param p1, "pin"    # I

    .line 69
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->pinInterrupts:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public connect(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 75
    :try_start_0
    new-instance v0, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;

    invoke-direct {v0}, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;-><init>()V

    .line 76
    .local v0, "rpi":Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;
    invoke-virtual {v0, p1, p2}, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;->connect(Ljava/lang/String;I)Z

    .line 77
    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;->getConnection()Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->connection:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    nop

    .line 83
    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;->getConnection()Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->isConnected()Z

    move-result v1

    return v1

    .line 78
    .end local v0    # "rpi":Lorg/catrobat/catroid/devices/raspberrypi/AsyncRPiTaskRunner;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connecting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v1, 0x0

    return v1
.end method

.method public disconnect()V
    .locals 4

    .line 87
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->connection:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;

    if-eqz v0, :cond_0

    .line 90
    :try_start_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;->disconnect()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->connection:Lorg/catrobat/catroid/devices/raspberrypi/RPiSocketConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception during disconnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->pinInterrupts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 97
    return-void
.end method

.method public enableRaspberryInterruptPinsForProject(Lorg/catrobat/catroid/content/Project;)V
    .locals 9
    .param p1, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 224
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 225
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 226
    .local v3, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/Script;

    .line 227
    .local v5, "script":Lorg/catrobat/catroid/content/Script;
    instance-of v6, v5, Lorg/catrobat/catroid/content/RaspiInterruptScript;

    if-eqz v6, :cond_0

    .line 228
    move-object v6, v5

    check-cast v6, Lorg/catrobat/catroid/content/RaspiInterruptScript;

    .line 229
    .local v6, "raspiInterruptScript":Lorg/catrobat/catroid/content/RaspiInterruptScript;
    invoke-virtual {v6}, Lorg/catrobat/catroid/content/RaspiInterruptScript;->getPin()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 230
    .local v7, "selectedPin":I
    invoke-static {}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->getInstance()Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->addPinInterrupt(I)V

    .line 232
    .end local v5    # "script":Lorg/catrobat/catroid/content/Script;
    .end local v6    # "raspiInterruptScript":Lorg/catrobat/catroid/content/RaspiInterruptScript;
    .end local v7    # "selectedPin":I
    :cond_0
    goto :goto_2

    .line 233
    .end local v3    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_1
    goto :goto_1

    .line 234
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    :cond_2
    goto :goto_0

    .line 235
    :cond_3
    return-void
.end method

.method public getGpioList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 20
    .param p1, "revision"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->gpioVersionMap:Ljava/util/Map;

    move-object/from16 v2, p1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    .line 101
    .local v1, "version":Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v3, "availableGPIOs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v4, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->SMALL_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    const/16 v7, 0x17

    .line 117
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 102
    const/16 v8, 0x16

    .line 116
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 102
    const/16 v9, 0x15

    .line 115
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 102
    const/16 v10, 0x13

    .line 114
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 102
    const/16 v11, 0x12

    .line 113
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 102
    const/16 v12, 0x10

    .line 112
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 102
    const/16 v13, 0xf

    .line 111
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 102
    const/16 v14, 0xd

    .line 110
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 102
    const/16 v15, 0xc

    .line 109
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 102
    const/16 v16, 0xb

    .line 108
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 102
    const/16 v16, 0xa

    .line 107
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 102
    const/16 v16, 0x8

    .line 106
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 102
    const/16 v16, 0x7

    .line 105
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 102
    const/16 v16, 0x5

    .line 104
    move-object/from16 v17, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 102
    const/16 v16, 0x3

    .line 103
    move-object/from16 v18, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 102
    if-ne v1, v4, :cond_0

    .line 103
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    move-object/from16 v4, v18

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    const/16 v0, 0x1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v1

    goto/16 :goto_0

    .line 120
    :cond_0
    move-object/from16 v19, v17

    move-object/from16 v4, v18

    sget-object v4, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;->BIG_GPIO:Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;

    if-ne v1, v4, :cond_1

    .line 121
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    move-object/from16 v4, v18

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    const/16 v0, 0x1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    const/16 v0, 0x1d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    const/16 v0, 0x21

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    const/16 v0, 0x25

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    const/16 v0, 0x26

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v1

    goto :goto_0

    .line 148
    :cond_1
    move-object/from16 v16, v1

    move-object/from16 v4, v18

    move-object/from16 v1, v19

    .end local v1    # "version":Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;
    .local v16, "version":Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService$GpioVersionType;
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    const/16 v0, 0x1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :goto_0
    return-object v3
.end method

.method public getPinInterrupts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->pinInterrupts:Ljava/util/Set;

    return-object v0
.end method

.method public isValidPin(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "revision"    # Ljava/lang/String;
    .param p2, "pinNumber"    # I

    .line 238
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/devices/raspberrypi/RaspberryPiService;->getGpioList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
