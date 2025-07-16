.class public Lcom/opencsv/bean/concurrent/OrderedObject;
.super Ljava/lang/Object;
.source "OrderedObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final ordinal:J


# direct methods
.method constructor <init>(JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/opencsv/bean/concurrent/OrderedObject;->ordinal:J

    .line 36
    iput-object p3, p0, Lcom/opencsv/bean/concurrent/OrderedObject;->element:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/opencsv/bean/concurrent/OrderedObject;->element:Ljava/lang/Object;

    return-object v0
.end method

.method getOrdinal()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/opencsv/bean/concurrent/OrderedObject;->ordinal:J

    return-wide v0
.end method
