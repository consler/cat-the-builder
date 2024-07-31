.class public final synthetic Lcom/opencsv/bean/-$$Lambda$vj0u7_xDM0lr_9YZgFS7Tq8Esr0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/opencsv/bean/-$$Lambda$vj0u7_xDM0lr_9YZgFS7Tq8Esr0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opencsv/bean/-$$Lambda$vj0u7_xDM0lr_9YZgFS7Tq8Esr0;

    invoke-direct {v0}, Lcom/opencsv/bean/-$$Lambda$vj0u7_xDM0lr_9YZgFS7Tq8Esr0;-><init>()V

    sput-object v0, Lcom/opencsv/bean/-$$Lambda$vj0u7_xDM0lr_9YZgFS7Tq8Esr0;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$vj0u7_xDM0lr_9YZgFS7Tq8Esr0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method
