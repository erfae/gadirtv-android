.class final Landroidx/appcompat/app/LocaleOverlayHelper;
.super Ljava/lang/Object;
.source "LocaleOverlayHelper.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combineLocales(Landroidx/core/os/LocaleListCompat;Landroidx/core/os/LocaleListCompat;)Landroidx/core/os/LocaleListCompat;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v2

    invoke-virtual {p1}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v3

    add-int/2addr v3, v2

    if-ge v1, v3, :cond_2

    .line 3
    invoke-virtual {p0}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v2

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p1, v2}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Ljava/util/Locale;

    .line 8
    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Locale;

    invoke-static {p0}, Landroidx/core/os/LocaleListCompat;->create([Ljava/util/Locale;)Landroidx/core/os/LocaleListCompat;

    move-result-object p0

    return-object p0
.end method

.method public static combineLocalesIfOverlayExists(Landroidx/core/os/LocaleListCompat;Landroidx/core/os/LocaleListCompat;)Landroidx/core/os/LocaleListCompat;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/core/os/LocaleListCompat;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getEmptyLocaleList()Landroidx/core/os/LocaleListCompat;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Landroidx/appcompat/app/LocaleOverlayHelper;->combineLocales(Landroidx/core/os/LocaleListCompat;Landroidx/core/os/LocaleListCompat;)Landroidx/core/os/LocaleListCompat;

    move-result-object p0

    return-object p0
.end method
