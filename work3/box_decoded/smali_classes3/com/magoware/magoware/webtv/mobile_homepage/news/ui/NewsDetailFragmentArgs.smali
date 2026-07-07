.class public final Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;
.super Ljava/lang/Object;
.source "NewsDetailFragmentArgs.kt"

# interfaces
.implements Landroidx/navigation/NavArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;",
        "Landroidx/navigation/NavArgs;",
        "id",
        "",
        "(J)V",
        "getId",
        "()J",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toBundle",
        "Landroid/os/Bundle;",
        "toString",
        "",
        "Companion",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs$Companion;


# instance fields
.field private final id:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs$Companion;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;->id:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;JILjava/lang/Object;)Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    iget-wide p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;->id:J

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;->copy(J)Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs$Companion;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs$Companion;->fromBundle(Landroid/os/Bundle;)Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;->id:J

    return-wide v0
.end method

.method public final copy(J)Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;
    .locals 1

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;

    invoke-direct {v0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;-><init>(J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;

    iget-wide v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;->id:J

    iget-wide v2, p1, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;->id:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getId()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;->id:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;->id:J

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/api/ResponseObject-$$ExternalSynthetic0;->m0(J)I

    move-result v0

    return v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 4

    .line 13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14
    iget-wide v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;->id:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewsDetailFragmentArgs(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragmentArgs;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
