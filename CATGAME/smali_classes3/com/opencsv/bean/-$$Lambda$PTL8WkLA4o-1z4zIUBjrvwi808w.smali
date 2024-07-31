.class public final synthetic Lcom/opencsv/bean/-$$Lambda$PTL8WkLA4o-1z4zIUBjrvwi808w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/time/temporal/TemporalQuery;


# static fields
.field public static final synthetic INSTANCE:Lcom/opencsv/bean/-$$Lambda$PTL8WkLA4o-1z4zIUBjrvwi808w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opencsv/bean/-$$Lambda$PTL8WkLA4o-1z4zIUBjrvwi808w;

    invoke-direct {v0}, Lcom/opencsv/bean/-$$Lambda$PTL8WkLA4o-1z4zIUBjrvwi808w;-><init>()V

    sput-object v0, Lcom/opencsv/bean/-$$Lambda$PTL8WkLA4o-1z4zIUBjrvwi808w;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$PTL8WkLA4o-1z4zIUBjrvwi808w;

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

    invoke-static {p1}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p1

    return-object p1
.end method
