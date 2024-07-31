.class public final synthetic Lcom/esotericsoftware/kryo/util/-$$Lambda$Pool$SoftReferenceQueue$hzzTiR-eDKvUdItB_rVzhlQGRZg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/esotericsoftware/kryo/util/-$$Lambda$Pool$SoftReferenceQueue$hzzTiR-eDKvUdItB_rVzhlQGRZg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryo/util/-$$Lambda$Pool$SoftReferenceQueue$hzzTiR-eDKvUdItB_rVzhlQGRZg;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/-$$Lambda$Pool$SoftReferenceQueue$hzzTiR-eDKvUdItB_rVzhlQGRZg;-><init>()V

    sput-object v0, Lcom/esotericsoftware/kryo/util/-$$Lambda$Pool$SoftReferenceQueue$hzzTiR-eDKvUdItB_rVzhlQGRZg;->INSTANCE:Lcom/esotericsoftware/kryo/util/-$$Lambda$Pool$SoftReferenceQueue$hzzTiR-eDKvUdItB_rVzhlQGRZg;

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

    check-cast p1, Ljava/lang/ref/SoftReference;

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Pool$SoftReferenceQueue;->lambda$clean$0(Ljava/lang/ref/SoftReference;)Z

    move-result p1

    return p1
.end method
