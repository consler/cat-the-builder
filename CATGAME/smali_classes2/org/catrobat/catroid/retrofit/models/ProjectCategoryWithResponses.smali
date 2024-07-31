.class public final Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;
.super Ljava/lang/Object;
.source "Models.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J#\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;",
        "",
        "category",
        "Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;",
        "projectsList",
        "",
        "Lorg/catrobat/catroid/retrofit/models/ProjectResponse;",
        "(Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;Ljava/util/List;)V",
        "getCategory",
        "()Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;",
        "getProjectsList",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final category:Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;

.field private final projectsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;Ljava/util/List;)V
    .locals 1
    .param p1, "category"    # Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;
    .param p2, "projectsList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projectsList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;->category:Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;

    iput-object p2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;->projectsList:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;Ljava/util/List;ILjava/lang/Object;)Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;->category:Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;->projectsList:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;->copy(Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;Ljava/util/List;)Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;->category:Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;->projectsList:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;Ljava/util/List;)Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectResponse;",
            ">;)",
            "Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;"
        }
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projectsList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;

    invoke-direct {v0, p1, p2}, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;-><init>(Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;->category:Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;

    iget-object v1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;->category:Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;->projectsList:Ljava/util/List;

    iget-object p1, p1, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;->projectsList:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getCategory()Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;->category:Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;

    return-object v0
.end method

.method public final getProjectsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectResponse;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;->projectsList:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;->category:Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;->projectsList:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProjectCategoryWithResponses(category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;->category:Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", projectsList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;->projectsList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
