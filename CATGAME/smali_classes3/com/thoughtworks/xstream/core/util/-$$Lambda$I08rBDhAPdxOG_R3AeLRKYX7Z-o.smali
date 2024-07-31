.class public final synthetic Lcom/thoughtworks/xstream/core/util/-$$Lambda$I08rBDhAPdxOG_R3AeLRKYX7Z-o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/time/temporal/TemporalQuery;


# static fields
.field public static final synthetic INSTANCE:Lcom/thoughtworks/xstream/core/util/-$$Lambda$I08rBDhAPdxOG_R3AeLRKYX7Z-o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/core/util/-$$Lambda$I08rBDhAPdxOG_R3AeLRKYX7Z-o;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/-$$Lambda$I08rBDhAPdxOG_R3AeLRKYX7Z-o;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/core/util/-$$Lambda$I08rBDhAPdxOG_R3AeLRKYX7Z-o;->INSTANCE:Lcom/thoughtworks/xstream/core/util/-$$Lambda$I08rBDhAPdxOG_R3AeLRKYX7Z-o;

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

    invoke-static {p1}, Ljava/time/OffsetTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method
