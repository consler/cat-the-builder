.class public final synthetic Lcom/opencsv/bean/-$$Lambda$s5m5MeaV2aSJc6r0m4rL04eFL2o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/opencsv/bean/-$$Lambda$s5m5MeaV2aSJc6r0m4rL04eFL2o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opencsv/bean/-$$Lambda$s5m5MeaV2aSJc6r0m4rL04eFL2o;

    invoke-direct {v0}, Lcom/opencsv/bean/-$$Lambda$s5m5MeaV2aSJc6r0m4rL04eFL2o;-><init>()V

    sput-object v0, Lcom/opencsv/bean/-$$Lambda$s5m5MeaV2aSJc6r0m4rL04eFL2o;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$s5m5MeaV2aSJc6r0m4rL04eFL2o;

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

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method
