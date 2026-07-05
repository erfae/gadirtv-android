.class final Lio/realm/NullRealmAnyOperator;
.super Lio/realm/RealmAnyOperator;
.source "RealmAnyOperator.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lio/realm/RealmAny$Type;->NULL:Lio/realm/RealmAny$Type;

    invoke-direct {p0, v0}, Lio/realm/RealmAnyOperator;-><init>(Lio/realm/RealmAny$Type;)V

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/core/NativeRealmAny;)V
    .locals 1

    .line 2
    sget-object v0, Lio/realm/RealmAny$Type;->NULL:Lio/realm/RealmAny$Type;

    invoke-direct {p0, v0, p1}, Lio/realm/RealmAnyOperator;-><init>(Lio/realm/RealmAny$Type;Lio/realm/internal/core/NativeRealmAny;)V

    return-void
.end method


# virtual methods
.method public final createNativeRealmAny()Lio/realm/internal/core/NativeRealmAny;
    .locals 1

    new-instance v0, Lio/realm/internal/core/NativeRealmAny;

    invoke-direct {v0}, Lio/realm/internal/core/NativeRealmAny;-><init>()V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-class v0, Lio/realm/NullRealmAnyOperator;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "null"

    return-object v0
.end method
