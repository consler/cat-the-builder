.class public interface abstract Lorg/catrobat/catroid/transfers/GetTagsTask$TagResponseListener;
.super Ljava/lang/Object;
.source "GetTagsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/transfers/GetTagsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TagResponseListener"
.end annotation


# virtual methods
.method public abstract onTagsReceived(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
