.class public final Ldagger/internal/MissingBindingFactory;
.super Ljava/lang/Object;
.source "MissingBindingFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Ldagger/internal/MissingBindingFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/MissingBindingFactory<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ldagger/internal/MissingBindingFactory;

    invoke-direct {v0}, Ldagger/internal/MissingBindingFactory;-><init>()V

    sput-object v0, Ldagger/internal/MissingBindingFactory;->INSTANCE:Ldagger/internal/MissingBindingFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ldagger/internal/Factory<",
            "TT;>;"
        }
    .end annotation

    .line 33
    sget-object v0, Ldagger/internal/MissingBindingFactory;->INSTANCE:Ldagger/internal/MissingBindingFactory;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This binding is not part of the final binding graph. The key was requested by a binding that was believed to possibly be part of the graph, but is no longer requested. If this exception is thrown, it is the result of a Dagger bug."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
