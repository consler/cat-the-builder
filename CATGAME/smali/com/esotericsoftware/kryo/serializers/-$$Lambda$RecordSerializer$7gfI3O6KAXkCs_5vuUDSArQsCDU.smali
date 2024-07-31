.class public final synthetic Lcom/esotericsoftware/kryo/serializers/-$$Lambda$RecordSerializer$7gfI3O6KAXkCs_5vuUDSArQsCDU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/esotericsoftware/kryo/serializers/-$$Lambda$RecordSerializer$7gfI3O6KAXkCs_5vuUDSArQsCDU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/-$$Lambda$RecordSerializer$7gfI3O6KAXkCs_5vuUDSArQsCDU;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/-$$Lambda$RecordSerializer$7gfI3O6KAXkCs_5vuUDSArQsCDU;-><init>()V

    sput-object v0, Lcom/esotericsoftware/kryo/serializers/-$$Lambda$RecordSerializer$7gfI3O6KAXkCs_5vuUDSArQsCDU;->INSTANCE:Lcom/esotericsoftware/kryo/serializers/-$$Lambda$RecordSerializer$7gfI3O6KAXkCs_5vuUDSArQsCDU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->lambda$invokeCanonicalConstructor$0(I)[Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
