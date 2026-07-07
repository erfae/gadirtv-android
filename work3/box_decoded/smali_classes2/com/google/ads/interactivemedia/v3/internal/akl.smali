.class public final Lcom/google/ads/interactivemedia/v3/internal/akl;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field private static final a:Lcom/google/ads/interactivemedia/v3/internal/adr;


# instance fields
.field private final b:Lcom/google/ads/interactivemedia/v3/internal/akj;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/akk;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ads;

    .line 1
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/ads;-><init>()V

    const-class v1, Lcom/google/ads/interactivemedia/v3/api/UiElement;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/data/bl;->GSON_TYPE_ADAPTER:Lcom/google/ads/interactivemedia/v3/internal/aeg;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ads;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aki;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/aki;-><init>()V

    const-class v2, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ads;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ana;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/ana;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ads;->a(Lcom/google/ads/interactivemedia/v3/internal/aeh;)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ads;->a()Lcom/google/ads/interactivemedia/v3/internal/adr;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/akl;->a:Lcom/google/ads/interactivemedia/v3/internal/adr;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/akl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->b:Lcom/google/ads/interactivemedia/v3/internal/akj;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->e:Lcom/google/ads/interactivemedia/v3/internal/akk;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/akl;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lcom/google/ads/interactivemedia/v3/internal/aed;
        }
    .end annotation

    .line 10
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sid"

    .line 12
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 13
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/akl;

    .line 14
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/akj;->valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/akj;

    move-result-object v0

    const-string v3, "type"

    .line 15
    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/akk;->valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/akk;

    move-result-object v3

    .line 16
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/akl;->a:Lcom/google/ads/interactivemedia/v3/internal/adr;

    const-string v5, "data"

    .line 17
    invoke-virtual {p0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v5, Lcom/google/ads/interactivemedia/v3/impl/data/bd;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 18
    :cond_0
    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v4, v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/adr;->a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 20
    :goto_0
    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/afr;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 17
    invoke-direct {v2, v0, v3, v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/akl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    .line 13
    :cond_1
    new-instance p0, Ljava/net/MalformedURLException;

    const-string v0, "Session id must be provided in message."

    invoke-direct {p0, v0}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Lcom/google/ads/interactivemedia/v3/internal/akj;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->b:Lcom/google/ads/interactivemedia/v3/internal/akj;

    return-object v0
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/internal/akk;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->e:Lcom/google/ads/interactivemedia/v3/internal/akk;

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aos;

    .line 22
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/aos;-><init>()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->e:Lcom/google/ads/interactivemedia/v3/internal/akk;

    const-string v2, "type"

    .line 23
    invoke-virtual {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/aos;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->d:Ljava/lang/String;

    const-string v2, "sid"

    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/aos;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->c:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const-string v2, "data"

    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/aos;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aos;->a()Lcom/google/ads/interactivemedia/v3/internal/aou;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "javascript:adsense.mobileads.afmanotify.receiveMessage"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->b:Lcom/google/ads/interactivemedia/v3/internal/akj;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/akl;->a:Lcom/google/ads/interactivemedia/v3/internal/adr;

    .line 27
    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/adr;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "%s(\'%s\', %s);"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 6
    :cond_1
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/internal/akl;

    if-nez v2, :cond_2

    return v1

    .line 7
    :cond_2
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/akl;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->b:Lcom/google/ads/interactivemedia/v3/internal/akj;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/internal/akl;->b:Lcom/google/ads/interactivemedia/v3/internal/akj;

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->c:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/internal/akl;->c:Ljava/lang/Object;

    .line 8
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/internal/akl;->d:Ljava/lang/String;

    .line 9
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->e:Lcom/google/ads/interactivemedia/v3/internal/akk;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/akl;->e:Lcom/google/ads/interactivemedia/v3/internal/akk;

    if-eq v2, p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->b:Lcom/google/ads/interactivemedia/v3/internal/akj;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->c:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->d:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->e:Lcom/google/ads/interactivemedia/v3/internal/akk;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 21
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->b:Lcom/google/ads/interactivemedia/v3/internal/akj;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->e:Lcom/google/ads/interactivemedia/v3/internal/akk;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->d:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/akl;->c:Ljava/lang/Object;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "JavaScriptMessage [command=%s, type=%s, sid=%s, data=%s]"

    .line 28
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
