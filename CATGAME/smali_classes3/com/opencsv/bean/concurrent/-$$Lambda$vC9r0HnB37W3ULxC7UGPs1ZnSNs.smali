.class public final synthetic Lcom/opencsv/bean/concurrent/-$$Lambda$vC9r0HnB37W3ULxC7UGPs1ZnSNs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/opencsv/bean/concurrent/-$$Lambda$vC9r0HnB37W3ULxC7UGPs1ZnSNs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opencsv/bean/concurrent/-$$Lambda$vC9r0HnB37W3ULxC7UGPs1ZnSNs;

    invoke-direct {v0}, Lcom/opencsv/bean/concurrent/-$$Lambda$vC9r0HnB37W3ULxC7UGPs1ZnSNs;-><init>()V

    sput-object v0, Lcom/opencsv/bean/concurrent/-$$Lambda$vC9r0HnB37W3ULxC7UGPs1ZnSNs;->INSTANCE:Lcom/opencsv/bean/concurrent/-$$Lambda$vC9r0HnB37W3ULxC7UGPs1ZnSNs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/opencsv/bean/concurrent/OrderedObject;

    invoke-static {p1}, L$r8$backportedMethods$utility$Objects$1$nonNull;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
