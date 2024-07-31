.class public final synthetic Lcom/opencsv/bean/-$$Lambda$ZxMv01bq_g5B15xox-CPd7OpriQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/time/temporal/TemporalQuery;


# static fields
.field public static final synthetic INSTANCE:Lcom/opencsv/bean/-$$Lambda$ZxMv01bq_g5B15xox-CPd7OpriQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opencsv/bean/-$$Lambda$ZxMv01bq_g5B15xox-CPd7OpriQ;

    invoke-direct {v0}, Lcom/opencsv/bean/-$$Lambda$ZxMv01bq_g5B15xox-CPd7OpriQ;-><init>()V

    sput-object v0, Lcom/opencsv/bean/-$$Lambda$ZxMv01bq_g5B15xox-CPd7OpriQ;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$ZxMv01bq_g5B15xox-CPd7OpriQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Ljava/time/ZonedDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;

    move-result-object p1

    check-cast p1, Ljava/lang/Object;

    return-object p1
.end method
