.class public final synthetic Lcom/opencsv/bean/-$$Lambda$3G_gaF_PLsPaQH3pt-LCz5aDBJo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/opencsv/bean/-$$Lambda$3G_gaF_PLsPaQH3pt-LCz5aDBJo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opencsv/bean/-$$Lambda$3G_gaF_PLsPaQH3pt-LCz5aDBJo;

    invoke-direct {v0}, Lcom/opencsv/bean/-$$Lambda$3G_gaF_PLsPaQH3pt-LCz5aDBJo;-><init>()V

    sput-object v0, Lcom/opencsv/bean/-$$Lambda$3G_gaF_PLsPaQH3pt-LCz5aDBJo;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$3G_gaF_PLsPaQH3pt-LCz5aDBJo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
