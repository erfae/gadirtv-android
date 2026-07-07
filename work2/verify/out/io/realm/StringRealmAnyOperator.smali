.class final Lio/realm/StringRealmAnyOperator;
.super Lio/realm/PrimitiveRealmAnyOperator;
.source "RealmAnyOperator.java"


# direct methods
.method public constructor <init>(Lio/realm/internal/core/NativeRealmAny;)V
    .registers 4

    .line 2
    invoke-virtual {p1}, Lio/realm/internal/core/NativeRealmAny;->asString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/realm/RealmAny$Type;->STRING:Lio/realm/RealmAny$Type;

    invoke-direct {p0, v0, v1, p1}, Lio/realm/PrimitiveRealmAnyOperator;-><init>(Ljava/lang/Object;Lio/realm/RealmAny$Type;Lio/realm/internal/core/NativeRealmAny;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Lio/realm/RealmAny$Type;->STRING:Lio/realm/RealmAny$Type;

    invoke-direct {p0, p1, v0}, Lio/realm/PrimitiveRealmAnyOperator;-><init>(Ljava/lang/Object;Lio/realm/RealmAny$Type;)V

    return-void
.end method


# virtual methods
.method public final createNativeRealmAny()Lio/realm/internal/core/NativeRealmAny;
    .registers 3

    new-instance v0, Lio/realm/internal/core/NativeRealmAny;

    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lio/realm/PrimitiveRealmAnyOperator;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lio/realm/internal/core/NativeRealmAny;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
