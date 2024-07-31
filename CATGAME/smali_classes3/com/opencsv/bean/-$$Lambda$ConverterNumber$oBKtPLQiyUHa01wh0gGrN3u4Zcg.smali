.class public final synthetic Lcom/opencsv/bean/-$$Lambda$ConverterNumber$oBKtPLQiyUHa01wh0gGrN3u4Zcg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterNumber$oBKtPLQiyUHa01wh0gGrN3u4Zcg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opencsv/bean/-$$Lambda$ConverterNumber$oBKtPLQiyUHa01wh0gGrN3u4Zcg;

    invoke-direct {v0}, Lcom/opencsv/bean/-$$Lambda$ConverterNumber$oBKtPLQiyUHa01wh0gGrN3u4Zcg;-><init>()V

    sput-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterNumber$oBKtPLQiyUHa01wh0gGrN3u4Zcg;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterNumber$oBKtPLQiyUHa01wh0gGrN3u4Zcg;

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

    invoke-static {p1}, Lcom/opencsv/bean/ConverterNumber;->lambda$new$1(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method
