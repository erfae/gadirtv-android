.class public Lio/realm/internal/OsObjectSchemaInfo;
.super Ljava/lang/Object;
.source "OsObjectSchemaInfo.java"

# interfaces
.implements Lio/realm/internal/NativeObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/OsObjectSchemaInfo$Builder;
    }
.end annotation


# static fields
.field private static final nativeFinalizerPtr:J


# instance fields
.field private nativePtr:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lio/realm/internal/OsObjectSchemaInfo;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsObjectSchemaInfo;->nativeFinalizerPtr:J

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    .line 8
    sget-object p1, Lio/realm/internal/NativeContext;->dummyContext:Lio/realm/internal/NativeContext;

    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 2
    invoke-static {p1, p2, p3}, Lio/realm/internal/OsObjectSchemaInfo;->nativeCreateRealmObjectSchema(Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    .line 5
    sget-object p1, Lio/realm/internal/NativeContext;->dummyContext:Lio/realm/internal/NativeContext;

    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLio/realm/internal/OsObjectSchemaInfo$1;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/realm/internal/OsObjectSchemaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic access$100(Lio/realm/internal/OsObjectSchemaInfo;)J
    .registers 3

    iget-wide v0, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    return-wide v0
.end method

.method public static synthetic access$200(J[J[J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lio/realm/internal/OsObjectSchemaInfo;->nativeAddProperties(J[J[J)V

    return-void
.end method

.method private static native nativeAddProperties(J[J[J)V
.end method

.method private static native nativeCreateRealmObjectSchema(Ljava/lang/String;Ljava/lang/String;Z)J
.end method

.method private static native nativeGetClassName(J)Ljava/lang/String;
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetPrimaryKeyProperty(J)J
.end method

.method private static native nativeGetProperty(JLjava/lang/String;)J
.end method

.method private static native nativeIsEmbedded(J)Z
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .registers 3

    iget-wide v0, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsObjectSchemaInfo;->nativeGetClassName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .registers 3

    sget-wide v0, Lio/realm/internal/OsObjectSchemaInfo;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .registers 3

    iget-wide v0, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    return-wide v0
.end method

.method public getPrimaryKeyProperty()Lio/realm/internal/Property;
    .registers 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsObjectSchemaInfo;->nativeGetPrimaryKeyProperty(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    const/4 v0, 0x0

    goto :goto_19

    .line 2
    :cond_e
    new-instance v0, Lio/realm/internal/Property;

    iget-wide v1, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    invoke-static {v1, v2}, Lio/realm/internal/OsObjectSchemaInfo;->nativeGetPrimaryKeyProperty(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lio/realm/internal/Property;-><init>(J)V

    :goto_19
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Lio/realm/internal/Property;
    .registers 5

    new-instance v0, Lio/realm/internal/Property;

    iget-wide v1, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    invoke-static {v1, v2, p1}, Lio/realm/internal/OsObjectSchemaInfo;->nativeGetProperty(JLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lio/realm/internal/Property;-><init>(J)V

    return-object v0
.end method

.method public isEmbedded()Z
    .registers 3

    iget-wide v0, p0, Lio/realm/internal/OsObjectSchemaInfo;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsObjectSchemaInfo;->nativeIsEmbedded(J)Z

    move-result v0

    return v0
.end method
