.class public final synthetic Lcom/opencsv/bean/-$$Lambda$ConverterNumber$JkyrR5ntfWQWhmSf1iqKVPM_9No;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterNumber$JkyrR5ntfWQWhmSf1iqKVPM_9No;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opencsv/bean/-$$Lambda$ConverterNumber$JkyrR5ntfWQWhmSf1iqKVPM_9No;

    invoke-direct {v0}, Lcom/opencsv/bean/-$$Lambda$ConverterNumber$JkyrR5ntfWQWhmSf1iqKVPM_9No;-><init>()V

    sput-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterNumber$JkyrR5ntfWQWhmSf1iqKVPM_9No;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterNumber$JkyrR5ntfWQWhmSf1iqKVPM_9No;

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

    invoke-static {p1}, Lcom/opencsv/bean/ConverterNumber;->lambda$new$0(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method
