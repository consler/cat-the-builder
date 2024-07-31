.class public final synthetic Lcom/opencsv/bean/concurrent/-$$Lambda$Mp4fKuY4NRZXcZYfa122ZRG55XQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/opencsv/bean/concurrent/-$$Lambda$Mp4fKuY4NRZXcZYfa122ZRG55XQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opencsv/bean/concurrent/-$$Lambda$Mp4fKuY4NRZXcZYfa122ZRG55XQ;

    invoke-direct {v0}, Lcom/opencsv/bean/concurrent/-$$Lambda$Mp4fKuY4NRZXcZYfa122ZRG55XQ;-><init>()V

    sput-object v0, Lcom/opencsv/bean/concurrent/-$$Lambda$Mp4fKuY4NRZXcZYfa122ZRG55XQ;->INSTANCE:Lcom/opencsv/bean/concurrent/-$$Lambda$Mp4fKuY4NRZXcZYfa122ZRG55XQ;

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

    return-object p1
.end method
