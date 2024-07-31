.class public final synthetic Lcom/opencsv/bean/concurrent/-$$Lambda$R62zTd5xPRPm0LlXjlbpAgYuRrk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/opencsv/bean/concurrent/-$$Lambda$R62zTd5xPRPm0LlXjlbpAgYuRrk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opencsv/bean/concurrent/-$$Lambda$R62zTd5xPRPm0LlXjlbpAgYuRrk;

    invoke-direct {v0}, Lcom/opencsv/bean/concurrent/-$$Lambda$R62zTd5xPRPm0LlXjlbpAgYuRrk;-><init>()V

    sput-object v0, Lcom/opencsv/bean/concurrent/-$$Lambda$R62zTd5xPRPm0LlXjlbpAgYuRrk;->INSTANCE:Lcom/opencsv/bean/concurrent/-$$Lambda$R62zTd5xPRPm0LlXjlbpAgYuRrk;

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

    check-cast p1, Lcom/opencsv/bean/concurrent/OrderedObject;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/opencsv/exceptions/CsvException;

    return-object p1
.end method
