.class public final synthetic Lcom/thoughtworks/xstream/core/util/-$$Lambda$2Dm_gBEmfWAFyI8wDj_HTrgAgUc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/time/temporal/TemporalQuery;


# static fields
.field public static final synthetic INSTANCE:Lcom/thoughtworks/xstream/core/util/-$$Lambda$2Dm_gBEmfWAFyI8wDj_HTrgAgUc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/core/util/-$$Lambda$2Dm_gBEmfWAFyI8wDj_HTrgAgUc;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/-$$Lambda$2Dm_gBEmfWAFyI8wDj_HTrgAgUc;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/core/util/-$$Lambda$2Dm_gBEmfWAFyI8wDj_HTrgAgUc;->INSTANCE:Lcom/thoughtworks/xstream/core/util/-$$Lambda$2Dm_gBEmfWAFyI8wDj_HTrgAgUc;

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

    invoke-static {p1}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object p1

    return-object p1
.end method
