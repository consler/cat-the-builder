.class public final synthetic Lcom/thoughtworks/xstream/core/util/-$$Lambda$Bq8PKq1YWr8nyVk9SSfRYKrOu4A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/time/temporal/TemporalQuery;


# static fields
.field public static final synthetic INSTANCE:Lcom/thoughtworks/xstream/core/util/-$$Lambda$Bq8PKq1YWr8nyVk9SSfRYKrOu4A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/core/util/-$$Lambda$Bq8PKq1YWr8nyVk9SSfRYKrOu4A;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/-$$Lambda$Bq8PKq1YWr8nyVk9SSfRYKrOu4A;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/core/util/-$$Lambda$Bq8PKq1YWr8nyVk9SSfRYKrOu4A;->INSTANCE:Lcom/thoughtworks/xstream/core/util/-$$Lambda$Bq8PKq1YWr8nyVk9SSfRYKrOu4A;

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

    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method
