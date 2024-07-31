.class public final synthetic Lcom/opencsv/bean/-$$Lambda$JI7bxrff7LHadREtoPZJQ3l7FSE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/opencsv/bean/-$$Lambda$JI7bxrff7LHadREtoPZJQ3l7FSE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opencsv/bean/-$$Lambda$JI7bxrff7LHadREtoPZJQ3l7FSE;

    invoke-direct {v0}, Lcom/opencsv/bean/-$$Lambda$JI7bxrff7LHadREtoPZJQ3l7FSE;-><init>()V

    sput-object v0, Lcom/opencsv/bean/-$$Lambda$JI7bxrff7LHadREtoPZJQ3l7FSE;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$JI7bxrff7LHadREtoPZJQ3l7FSE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
