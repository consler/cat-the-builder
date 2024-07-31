.class public final synthetic Lcom/esotericsoftware/kryo/serializers/-$$Lambda$INL0Wy7DFoOIoPos75TWzmbtK1Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/esotericsoftware/kryo/serializers/-$$Lambda$INL0Wy7DFoOIoPos75TWzmbtK1Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/-$$Lambda$INL0Wy7DFoOIoPos75TWzmbtK1Y;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/-$$Lambda$INL0Wy7DFoOIoPos75TWzmbtK1Y;-><init>()V

    sput-object v0, Lcom/esotericsoftware/kryo/serializers/-$$Lambda$INL0Wy7DFoOIoPos75TWzmbtK1Y;->INSTANCE:Lcom/esotericsoftware/kryo/serializers/-$$Lambda$INL0Wy7DFoOIoPos75TWzmbtK1Y;

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

    check-cast p1, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
