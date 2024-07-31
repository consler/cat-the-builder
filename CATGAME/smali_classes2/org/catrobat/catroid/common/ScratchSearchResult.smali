.class public Lorg/catrobat/catroid/common/ScratchSearchResult;
.super Ljava/lang/Object;
.source "ScratchSearchResult.java"


# instance fields
.field private pageNumber:I

.field private programDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/ScratchProgramData;",
            ">;"
        }
    .end annotation
.end field

.field private query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;I)V
    .locals 0
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "pageNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/ScratchProgramData;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 33
    .local p1, "programDataList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/ScratchProgramData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lorg/catrobat/catroid/common/ScratchSearchResult;->query:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/common/ScratchSearchResult;->programDataList:Ljava/util/List;

    .line 36
    iput p3, p0, Lorg/catrobat/catroid/common/ScratchSearchResult;->pageNumber:I

    .line 37
    return-void
.end method


# virtual methods
.method public getPageNumber()I
    .locals 1

    .line 48
    iget v0, p0, Lorg/catrobat/catroid/common/ScratchSearchResult;->pageNumber:I

    return v0
.end method

.method public getProgramDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/ScratchProgramData;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchSearchResult;->programDataList:Ljava/util/List;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/common/ScratchSearchResult;->query:Ljava/lang/String;

    return-object v0
.end method
