.class public final synthetic Lcom/opencsv/bean/-$$Lambda$ConverterDate$fZNNTDiOUh1szaG2_7aNGevwKJU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$fZNNTDiOUh1szaG2_7aNGevwKJU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$fZNNTDiOUh1szaG2_7aNGevwKJU;

    invoke-direct {v0}, Lcom/opencsv/bean/-$$Lambda$ConverterDate$fZNNTDiOUh1szaG2_7aNGevwKJU;-><init>()V

    sput-object v0, Lcom/opencsv/bean/-$$Lambda$ConverterDate$fZNNTDiOUh1szaG2_7aNGevwKJU;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ConverterDate$fZNNTDiOUh1szaG2_7aNGevwKJU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/time/format/DateTimeFormatter;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/opencsv/bean/ConverterDate;->lambda$determineReadTemporalConversionFunction$7(Ljava/time/format/DateTimeFormatter;Ljava/lang/String;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p1

    return-object p1
.end method
