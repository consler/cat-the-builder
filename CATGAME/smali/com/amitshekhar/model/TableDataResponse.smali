.class public Lcom/amitshekhar/model/TableDataResponse;
.super Ljava/lang/Object;
.source "TableDataResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amitshekhar/model/TableDataResponse$ColumnData;,
        Lcom/amitshekhar/model/TableDataResponse$TableInfo;
    }
.end annotation


# instance fields
.field public errorMessage:Ljava/lang/String;

.field public isEditable:Z

.field public isSelectQuery:Z

.field public isSuccessful:Z

.field public rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public tableInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amitshekhar/model/TableDataResponse$TableInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
