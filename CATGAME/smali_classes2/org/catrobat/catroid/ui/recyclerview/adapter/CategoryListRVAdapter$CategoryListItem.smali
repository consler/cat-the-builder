.class public Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;
.super Ljava/lang/Object;
.source "CategoryListRVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryListItem"
.end annotation


# instance fields
.field public header:Ljava/lang/String;

.field public nameResId:I

.field public text:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 2
    .param p1, "nameResId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const v0, 0x7f1203ba

    if-ne p1, v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t\t\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;->text:Ljava/lang/String;

    goto :goto_0

    .line 65
    :cond_0
    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;->text:Ljava/lang/String;

    .line 67
    :goto_0
    iput p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;->nameResId:I

    .line 68
    iput p3, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;->type:I

    .line 69
    return-void
.end method
